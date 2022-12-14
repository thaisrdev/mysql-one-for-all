SELECT
c.artist_name AS artista, a.album_name AS album
FROM 
SpotifyClone.artists AS c 
RIGHT JOIN 
SpotifyClone.albuns AS a ON c.artist_id = a.artist_id 
WHERE c.artist_name = 'Elis Regina';