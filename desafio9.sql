SELECT COUNT(H.songs_id) AS quantidade_musicas_no_historico 
FROM SpotifyClone.historic AS H
INNER JOIN SpotifyClone.users AS U
ON H.users_id = U.users_id
WHERE U.full_name = 'Bill';