/*Employee Search */
SELECT EmployeeId, LastName, FirstName, Title, BirthDate, HireDate, Address, City, State, Country, PostalCode, Phone, Fax, Email FROM Employee
INTO OUTFILE '/var/lib/mysql-files/emp.csv' 
FIELDS ENCLOSED BY '"' 
TERMINATED BY ';' 
ESCAPED BY '"' LINES 
TERMINATED BY '\r\n';
SELECT EmployeeId as `Employee X`, ReportsTo as `X Reports to Y` FROM Employee
INTO OUTFILE '/var/lib/mysql-files/emprelations.csv' 
FIELDS ENCLOSED BY '"' 
TERMINATED BY ';' 
ESCAPED BY '"' LINES 
TERMINATED BY '\r\n';

/*Album Search */
SELECT AlbumId, Title FROM Album AS Album
INTO OUTFILE '/var/lib/mysql-files/album.csv' 
FIELDS ENCLOSED BY '"' 
TERMINATED BY ';' 
ESCAPED BY '"' LINES 
TERMINATED BY '\r\n';
SELECT AlbumId, ArtistId as 'Written by artist'  FROM Album
INTO OUTFILE '/var/lib/mysql-files/albumArtistrelations.csv' 
FIELDS ENCLOSED BY '"' 
TERMINATED BY ';' 
ESCAPED BY '"' LINES 
TERMINATED BY '\r\n';

/*Artist Search */
SELECT * FROM Artist
INTO OUTFILE '/var/lib/mysql-files/artist.csv' 
FIELDS ENCLOSED BY '"' 
TERMINATED BY ';' 
ESCAPED BY '"' LINES 
TERMINATED BY '\r\n';

/*Customer Search */
SELECT CustomerId, FirstName, LastName, Company, Address, City, State, Country, PostalCode, Phone, Fax, Email FROM Customer
INTO OUTFILE '/var/lib/mysql-files/customer.csv' 
FIELDS ENCLOSED BY '"' 
TERMINATED BY ';' 
ESCAPED BY '"' LINES 
TERMINATED BY '\r\n';

SELECT CustomerId as Customer, SupportRepId as `Supported by Employee` FROM Customer, Employee;
INTO OUTFILE '/var/lib/mysql-files/custrelations.csv' 
FIELDS ENCLOSED BY '"' 
TERMINATED BY ';' 
ESCAPED BY '"' LINES 
TERMINATED BY '\r\n';

/*Genre Search */
SELECT * FROM Genre AS Genre
INTO OUTFILE '/var/lib/mysql-files/genre.csv' 
FIELDS ENCLOSED BY '"' 
TERMINATED BY ';' 
ESCAPED BY '"' LINES 
TERMINATED BY '\r\n';

/*Invoice Search */
SELECT * FROM Invoice AS Invoice;
SELECT il.TrackId AS `TrackId Purchased`, il.Quantity, iv.InvoiceId FROM InvoiceLine il, Invoice iv
INTO OUTFILE '/var/lib/mysql-files/invoiceRelations.csv' 
FIELDS ENCLOSED BY '"' 
TERMINATED BY ';' 
ESCAPED BY '"' LINES 
TERMINATED BY '\r\n';

/*MediaType Search */
SELECT * FROM MediaType as MediaType
INTO OUTFILE '/var/lib/mysql-files/media.csv' 
FIELDS ENCLOSED BY '"' 
TERMINATED BY ';' 
ESCAPED BY '"' LINES 
TERMINATED BY '\r\n';

/*Playlist Search */
SELECT * FROM Playlist as Playlist
INTO OUTFILE '/var/lib/mysql-files/Playlist.csv' 
FIELDS ENCLOSED BY '"' 
TERMINATED BY ';' 
ESCAPED BY '"' LINES 
TERMINATED BY '\r\n';

SELECT TrackId as `Playlist contains`, PlaylistId FROM PlaylistTrack
INTO OUTFILE '/var/lib/mysql-files/Playlistrelations.csv' 
FIELDS ENCLOSED BY '"' 
TERMINATED BY ';' 
ESCAPED BY '"' LINES 
TERMINATED BY '\r\n';


/*Track Search */
SELECT TrackId, Name, Composer, Milliseconds, Bytes, UnitPrice FROM Track
INTO OUTFILE '/var/lib/mysql-files/Track.csv' 
FIELDS ENCLOSED BY '"' 
TERMINATED BY ';' 
ESCAPED BY '"' LINES 
TERMINATED BY '\r\n';

SELECT TrackId, AlbumId AS `Belongs to Album` FROM Track
INTO OUTFILE '/var/lib/mysql-files/Trackrelations.csv' 
FIELDS ENCLOSED BY '"' 
TERMINATED BY ';' 
ESCAPED BY '"' LINES 
TERMINATED BY '\r\n';

SELECT TrackId, MediaType.Name AS `MediaType` FROM Track, MediaType WHERE Track.MediaTypeId = MediaType.MediaTypeId
INTO OUTFILE '/var/lib/mysql-files/TrackMediarelations.csv' 
FIELDS ENCLOSED BY '"' 
TERMINATED BY ';' 
ESCAPED BY '"' LINES 
TERMINATED BY '\r\n';

SELECT Track.TrackId, Album.Title AS `Is on album` FROM Track, Album WHERE Track.AlbumId = Album.AlbumId
INTO OUTFILE '/var/lib/mysql-files/trackAlbumrelations.csv' 
FIELDS ENCLOSED BY '"' 
TERMINATED BY ';' 
ESCAPED BY '"' LINES 
TERMINATED BY '\r\n';

SELECT TrackId, Genre.Name AS `Genre` FROM Track, Genre WHERE Track.GenreId = Genre.GenreId 
INTO OUTFILE '/var/lib/mysql-files/TrackGenrerelations.csv' 
FIELDS ENCLOSED BY '"' 
TERMINATED BY ';' 
ESCAPED BY '"' LINES 
TERMINATED BY '\r\n';

