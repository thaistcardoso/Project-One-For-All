SELECT COUNT(songs.id) AS cancoes, COUNT(DISTINCT songs.album_id) AS albuns, COUNT(DISTINCT album.artist_id) AS artistas
FROM SpotifyClone.songs AS songs
INNER JOIN SpotifyClone.album AS album
ON songs.album_id = album.album_id;
