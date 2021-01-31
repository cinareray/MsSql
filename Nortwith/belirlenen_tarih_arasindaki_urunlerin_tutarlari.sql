-- sipariþ tarihine göre ürünün satýþ mikratýný veren sorgu 
-- SSRS'de @productid datasetlerden beslenen deðiþken olup, @ay belirtilen deðer(specify values) olup aylarý
-- @yil ise integer deðer olup el ile girilen deðerdir.
-- nortwith datalarý kullanýlmýþtýr.

select 
p.ProductID, p.ProductName,sum(od.Quantity*od.UnitPrice) as [Total]
from [Order Details] od
inner join Products p on od.ProductID = p.ProductID
inner join Orders o on od.OrderID = o.OrderID
where month(o.OrderDate) in(@ay) and year(o.OrderDate) = (@yil) and p.ProductID in(@productid)
group by p.ProductName,p.ProductID
order by Total DESC