-- En �ok Kazand�ran ilk �� �r�n hangisidir ?

select TOP (3) Products.ProductID, Products.ProductName , SUM([Order Details].Quantity*[Order Details].UnitPrice) as total from Products 
inner join [Order Details] on Products.ProductID = [Order Details].ProductID 
group by Products.ProductID, Products.ProductName
order by total DESC

-- �r�nler tablosu([Product]) ile Sipari� al�nan �r�nlerin tablosu([Order Details]) join edildi, group by ile �r�nlerin isimlerine g�re grupland�r�ld� ve
-- order by kullan�larak �r�n adet fiyat� ile Sipari� edilen adet �arp�larak ve sum komutu kullan�larak �r�nlerin sat�� miktarlar� bulundu ve ilk �� �r�n ekrana yazd�r�ld�.