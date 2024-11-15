-- Consultas de Agregación
-- Calcular el precio promedio de todos los productos.
select avg(p.Price) as 'Precio promedio de todos los productos'
from Products p;



-- Mostrar el número total de productos en cada categoría.
SELECT DISTINCT c.CategoryName , count(p.ProductID) as Cantidad
from Categories c left join Products p on (p.CategoryID = c.CategoryID)
GROUP by c.CategoryName
ORDER BY Cantidad DESC;


-- Determinar el número total de pedidos realizados por cada cliente.
select c.CustomerName as nombre , count(o.OrderID) as cantidad
from Customers c left JOIN Orders o on (c.CustomerID = o.CustomerID)
GROUP by CustomerName
order by nombre;

-- Mostrar la cantidad total de unidades vendidas para cada producto.
SELECT p.ProductName , sum(od.Quantity) as unidadesVendidas
from Products p left join OrderDetails od on(p.ProductID = od.ProductID)
GROUP by p.ProductName
order by unidadesVendidas;

-- Encontrar el pedido con la cantidad total más alta.
WITH cantidadPedidos as (
select od.OrderID , sum(od.Quantity) as cantidadTotal
from OrderDetails od
GROUP by od.OrderID )

SELECT OrderID , max(cantidadTotal) 
from cantidadPedidos;




-- Calcular el precio total de todos los productos de una categoría específica (por ejemplo, “Condiments”).
select CategoryName , sum (Price)
from Products inner join Categories on (Products.CategoryID = Categories.CategoryID) 
where CategoryName ='Condiments'