-- Liste les équipes avec moins de 2 joueurs (LEFT JOIN pour ne pas perdre les équipes sans effectif)
SELECT
teams.name AS équipe,
teams.budget_millions AS budget,
COUNT(players.name) AS nb_joueur
FROM teams
LEFT JOIN players ON players.team_id = teams.id
WHERE budget_millions > 150
GROUP BY teams.name, teams.budget_millions
HAVING COUNT(players.name) < 2;

-- Joueurs des équipes dont le budget dépasse 200 millions (INNER JOIN classique)
SELECT
players.name AS joueur,
teams.name AS équipe,
teams.budget_millions AS budget
FROM players
INNER JOIN teams ON players.team_id = teams.id
WHERE teams.budget_millions > 200;

-- Tous les joueurs avec leur équipe, triés par équipe puis par nom (INNER JOIN + ORDER BY multi-colonnes)
SELECT
players.name AS joueur,
teams.name AS équipe,
teams.budget_millions AS budget
FROM players
INNER JOIN teams ON players.team_id = teams.id
ORDER BY teams.name ASC, players.name ASC;