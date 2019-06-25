use Chinook;
SELECT p.PlaylistId AS '_id', p.name AS 'name', group_concat(t.Name) AS 'trackId.name' 
FROM Playlist p, PlaylistTrack l, Track t
WHERE p.PlaylistId = l.PlaylistId AND t.TrackId = l.TrackId
group by p.PlaylistId;

SELECT i.Invoiceid AS '_id', i.InvoiceDate AS 'invoiceDate', i.BillingAddress AS 'billingAddress', i.BillingCity AS 'billingCity',
i.BillingState AS 'billingState', i.BillingPostalCode AS 'billingPostalCode', group_concat(t.Name," ",t.UnitPrice," ",l.quantity SEPARATOR ' ')AS'Track,	,Unit Price,	Quantity'
FROM Invoice i, Track t, InvoiceLine l
Where i.InvoiceId = l.InvoiceId AND t.TrackId = l.TrackId
group by i.InvoiceId;

SELECT Track.TrackId AS ID, Track.Name, Album.Title AS Album, Artist.Name as Artist, Genre.Name as Genre, Track.Milliseconds, Track.Composer, MediaType.Name as MediaType, Track.UnitPrice 
FROM Track, Artist, Album, Genre, MediaType 
WHERE Track.AlbumId = Album.AlbumId 
AND Track.GenreId = Genre.GenreId 
AND Track.MediaTypeId = MediaType.MediaTypeId 
AND Album.ArtistId = Artist.ArtistId
