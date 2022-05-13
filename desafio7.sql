SELECT art.name_artist AS artista, alb.name_album AS album, COUNT(fol.follow) AS seguidores
FROM SpotifyClone.artist AS art
INNER JOIN  SpotifyClone.album AS alb
ON art.artist_id = alb.artist_id
INNER JOIN SpotifyClone.following = fol
ON art.artist_id = fol.artist_id
GROUP BY album, artista
ORDER BY seguidores DESC, artista, album;