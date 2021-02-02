select od.OrderID, string_agg(p.ProductName , '- ') as [Urunler] from Products p
inner join [Order Details] od on od.ProductID = p.ProductID
where od.OrderID = 10758
group by od.OrderID

--string_agg fonk ile bir sipari�te 3 kalem olan �r�nler tek kolonda yaz�labilir.