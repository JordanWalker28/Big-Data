use Chinook;
SELECT Track.TrackId AS trackID, Track.Name, Album.Title AS Album, Artist.Name as Artist, Genre.Name as Genre, Track.Milliseconds, Track.Composer, MediaType.Name as MediaType, Track.UnitPrice 
FROM Track, Artist, Album, Genre, MediaType 
WHERE Track.AlbumId = Album.AlbumId 
AND Track.GenreId = Genre.GenreId 
AND Track.MediaTypeId = MediaType.MediaTypeId 
AND Album.ArtistId = Artist.ArtistId
