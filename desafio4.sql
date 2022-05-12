SELECT users.full_name AS usuario,
IF ( MAX(YEAR(historic.data_reproduction)) = 2021, 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
FROM SpotifyClone.users AS users
INNER JOIN SpotifyClone.historic AS historic
ON users.users_id = historic.users_id
GROUP BY usuario
ORDER BY usuario;