use Chinook;
SELECT p.PlaylistId, p.name AS 'playlistName' 
FROM Playlist p, PlaylistTrack l, Track t
WHERE p.PlaylistId = l.PlaylistId AND t.TrackId = l.TrackId
group by p.PlaylistId;
