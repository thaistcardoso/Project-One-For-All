SELECT art.name_artist AS artista, alb.name_album AS album
FROM SpotifyClone.artist AS art
INNER JOIN  SpotifyClone.album AS alb
ON art.artist_id = alb.artist_id
WHERE art.name_artist = 'Walter Phoenix'
ORDER BY album;