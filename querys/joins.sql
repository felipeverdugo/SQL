-- Joins
-- Listar el nombre de cada producto junto con el nombre de su proveedor.
select p.ProductName , s.SupplierName
from Products p INNER JOIN Suppliers s on (p.SupplierID = s.SupplierID);

-- Mostrar el nombre de cada cliente junto con el país de origen de su proveedor.
select c.CustomerName, s.Country as paisProveedor
from Customers c 
INNER join Orders o on (c.CustomerID = o.CustomerID)
INNER join OrderDetails od on (od.OrderID = o.OrderID) 
INNER join Products p on (p.ProductID = od.ProductID) 
INNER join Suppliers s on (s.SupplierID = p.SupplierID) ;



-- Obtener el nombre de cada producto junto con el nombre de la categoría a la que pertenece.
select p.ProductName, c.CategoryName
from Products p inner join Categories c on (c.CategoryID = p.CategoryID);


-- Listar los nombres de los empleados que han procesado algún pedido junto con el ID de pedido.
select e.FirstName , e.LastName , o.OrderID as nroDePedido
from Employees e inner JOIN Orders o on (e.EmployeeID = o.EmployeeID)
order by e.FirstName;


-- Mostrar el nombre y precio de cada producto junto con el nombre del proveedor y su país de origen.
select p.ProductName , p.Price , s.SupplierName , s.Country
from Products p INNER join Suppliers s on (s.SupplierID = p.SupplierID)
