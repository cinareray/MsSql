-- Hangi kargo �irketlerine toplamda ne kadar �deme yap�lm��?

select Shippers.ShipperID, Shippers.CompanyName, sum(Orders.Freight) as [Toplam �denen Miktar], Shippers.Phone from Orders inner join Shippers on Orders.ShipVia = Shippers.ShipperID
group by Shippers.ShipperID, Shippers.CompanyName, Shippers.Phone
order by Shippers.ShipperID 

-- Shippers tablosunun Orders tablosuna Shipvia ve ShipperID kolonlar� ile join edildi. Orders tablosundaki Freifgt kolonu topland� ve grupland�r�larak ekrana yazd�r�ld�.


