-- Hangi üründen kaç adet satýlmýþtýr?

select Products.ProductID , Products.ProductName , count(Products.ProductID) as [Toplam Satýþ Adedi] from Products 
right join [Order Details] on [Order Details].ProductID = Products.ProductID
group by Products.ProductName, Products.ProductID
order by [Toplam Satýþ Adedi] DESC

-- Ürünler tablosu([Product]) ile Sipariþ alýnan ürünlerin tablosu([Order Details]) join edildi, group by ile ürünlerin isimlerine göre gruplandýrýldý ve
-- order by ile en çok satýlan ürün baþta incelenmesi için sýralandý.