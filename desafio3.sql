SELECT users.full_name AS usuario, COUNT(historic.users_id) AS qtde_musicas_ouvidas, ROUND(SUM(songs.duration_seconds/60),2) AS total_minutos
FROM SpotifyClone.users AS users
INNER JOIN SpotifyClone.historic AS historic
ON users.users_id = historic.users_id
INNER JOIN SpotifyClone.songs AS songs
ON songs.id = historic.songs_id
GROUP BY users.full_name
ORDER BY users.full_name;