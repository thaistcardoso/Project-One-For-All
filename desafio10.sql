SELECT M.name_songs AS nome, COUNT(H.songs_id) AS reproducoes
FROM SpotifyClone.songs AS M
INNER JOIN SpotifyClone.historic AS H 
ON M.id = H.songs_id
INNER JOIN SpotifyClone.users AS U
ON U.users_id = H.users_id
WHERE U.plan_id IN (1, 4)
GROUP BY nome
ORDER BY nome;