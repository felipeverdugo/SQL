-- Consultas Básicas
-- Obtener una lista de todos los productos con su nombre y precio.
SELECT ProductName,Price FROM Products;

-- Mostrar los nombres y apellidos de todos los empleados ordenados por apellido.
SELECT FirstName,LastName FROM Employees;


-- Listar todos los proveedores que tienen productos en la categoría de “Bebidas”.

select  DISTINCT s.SupplierName as Proveedor
FROM Suppliers s INNER JOIN Products p 
on (s.SupplierID = p.SupplierID) 
INNER JOIN Categories c on (p.CategoryID = c.CategoryID)
where c.CategoryName = 'Beverages' ;



-- Mostrar los nombres de todos los clientes cuyo nombre de contacto comienza con “A”.
select c.CustomerName as 'Nombres que comienzan con A'
from Customers c
WHERE c.CustomerName like 'a%'

