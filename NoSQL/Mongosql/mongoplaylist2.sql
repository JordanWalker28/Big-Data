use Chinook;
SELECT group_concat(t.TrackId) AS 'trackId' 
FROM Playlist p, PlaylistTrack l, Track t
WHERE p.PlaylistId = l.PlaylistId AND t.TrackId = l.TrackId
group by p.PlaylistId;