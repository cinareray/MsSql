-- Hangi �r�nden ka� adet sat�lm��t�r?

select Products.ProductID , Products.ProductName , count(Products.ProductID) as [Toplam Sat�� Adedi] from Products 
right join [Order Details] on [Order Details].ProductID = Products.ProductID
group by Products.ProductName, Products.ProductID
order by [Toplam Sat�� Adedi] DESC

-- �r�nler tablosu([Product]) ile Sipari� al�nan �r�nlerin tablosu([Order Details]) join edildi, group by ile �r�nlerin isimlerine g�re grupland�r�ld� ve
-- order by ile en �ok sat�lan �r�n ba�ta incelenmesi i�in s�raland�.