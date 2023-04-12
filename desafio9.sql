SELECT
COUNT(h.song_id) AS quantidade_musicas_no_historico
FROM
SpotifyClone.history AS h
INNER JOIN
SpotifyClone.users AS u ON h.user_id = u.user_id
WHERE u.user_name = 'Barbara Liskov';