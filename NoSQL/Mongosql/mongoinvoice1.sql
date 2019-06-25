use Chinook;
SELECT i.Invoiceid,i.InvoiceDate AS 'invoiceDate', c.CustomerId, c.LastName, c.FirstName,  i.BillingAddress AS 'billingAddress', i.BillingCity AS 'billingCity',
i.BillingState AS 'billingState', i.BillingPostalCode, i.Total AS 'billingPostalCode'
FROM Invoice i, Track t, InvoiceLine l, Customer c
Where i.InvoiceId = l.InvoiceId AND t.TrackId = l.TrackId AND c.CustomerId = i.CustomerId
group by i.InvoiceId;

