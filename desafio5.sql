SELECT songs.name_songs AS cancao, COUNT(DISTINCT historic.users_id) AS reproducoes
FROM SpotifyClone.songs AS songs
INNER JOIN SpotifyClone.historic AS historic  
ON songs.id = historic.songs_id
GROUP BY cancao
HAVING reproducoes >1
ORDER BY cancao
LIMIT 2;