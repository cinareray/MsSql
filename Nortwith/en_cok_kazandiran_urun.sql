-- En çok Kazandýran ilk üç ürün hangisidir ?

select TOP (3) Products.ProductID, Products.ProductName , SUM([Order Details].Quantity*[Order Details].UnitPrice) as total from Products 
inner join [Order Details] on Products.ProductID = [Order Details].ProductID 
group by Products.ProductID, Products.ProductName
order by total DESC

-- Ürünler tablosu([Product]) ile Sipariþ alýnan ürünlerin tablosu([Order Details]) join edildi, group by ile ürünlerin isimlerine göre gruplandýrýldý ve
-- order by kullanýlarak Ürün adet fiyatý ile Sipariþ edilen adet çarpýlarak ve sum komutu kullanýlarak ürünlerin satýþ miktarlarý bulundu ve ilk üç ürün ekrana yazdýrýldý.