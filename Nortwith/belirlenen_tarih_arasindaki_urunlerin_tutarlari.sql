-- sipari� tarihine g�re �r�n�n sat�� mikrat�n� veren sorgu 
-- SSRS'de @productid datasetlerden beslenen de�i�ken olup, @ay belirtilen de�er(specify values) olup aylar�
-- @yil ise integer de�er olup el ile girilen de�erdir.
-- nortwith datalar� kullan�lm��t�r.

select 
p.ProductID, p.ProductName,sum(od.Quantity*od.UnitPrice) as [Total]
from [Order Details] od
inner join Products p on od.ProductID = p.ProductID
inner join Orders o on od.OrderID = o.OrderID
where month(o.OrderDate) in(@ay) and year(o.OrderDate) = (@yil) and p.ProductID in(@productid)
group by p.ProductName,p.ProductID
order by Total DESC