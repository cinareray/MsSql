-- Hangi kargo þirketlerine toplamda ne kadar ödeme yapýlmýþ?

select Shippers.ShipperID, Shippers.CompanyName, sum(Orders.Freight) as [Toplam Ödenen Miktar], Shippers.Phone from Orders inner join Shippers on Orders.ShipVia = Shippers.ShipperID
group by Shippers.ShipperID, Shippers.CompanyName, Shippers.Phone
order by Shippers.ShipperID 

-- Shippers tablosunun Orders tablosuna Shipvia ve ShipperID kolonlarý ile join edildi. Orders tablosundaki Freifgt kolonu toplandý ve gruplandýrýlarak ekrana yazdýrýldý.


