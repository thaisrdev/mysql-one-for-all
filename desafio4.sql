SELECT
u.user_name AS usuario,
IF(YEAR(MAX(h.listening_date)) >= 2021, 'Usuário ativo', 'Usuário inativo') AS status_usuario
FROM
SpotifyClone.users AS u
INNER JOIN
SpotifyClone.history AS h ON u.user_id = h.user_id
GROUP BY u.user_name
ORDER BY u.user_name