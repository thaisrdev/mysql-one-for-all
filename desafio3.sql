SELECT
u.user_name AS usuario,
COUNT(h.song_id) AS qt_de_musicas_ouvidas,
ROUND(SUM(s.song_duration) / 60, 2) AS total_minutos
FROM
SpotifyClone.users AS u
INNER JOIN
SpotifyClone.history AS h ON u.user_id = h.user_id
INNER JOIN
SpotifyClone.songs AS s ON h.song_id = s.song_id
GROUP BY u.user_name
ORDER BY u.user_name;