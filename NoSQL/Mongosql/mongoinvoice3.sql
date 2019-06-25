use Chinook;
SELECT group_concat(t.UnitPrice) AS 'UP'
FROM Invoice i, Track t, InvoiceLine l, Customer c
Where i.InvoiceId = l.InvoiceId AND t.TrackId = l.TrackId AND c.CustomerId = i.CustomerId
group by i.InvoiceId;
