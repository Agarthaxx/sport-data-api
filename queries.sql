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

-- Joueurs ayant marqué plus de buts que la moyenne de leur équipe (sous-requête corrélée)
SELECT p.name, p.goals, p.team_id
FROM players p
WHERE p.goals > (
    SELECT AVG(p2.goals)
    FROM players p2
    WHERE p2.team_id = p.team_id
);

-- Joueurs ayant marqué moins de buts que la moyenne de leur équipe (inverse du précédent)
SELECT p.name, p.goals, p.team_id
FROM players p
WHERE p.goals < (
    SELECT AVG(p2.goals)
    FROM players p2
    WHERE p2.team_id = p.team_id
);

-- Équipes dont le budget dépasse la moyenne de leur propre ligue (sous-requête corrélée sur league)
SELECT t1.name, t1.league, t1.budget_millions
FROM teams t1
WHERE t1.budget_millions > (
    SELECT AVG(t2.budget_millions)
    FROM teams t2
    WHERE t2.league = t1.league
);

-- Équipes dont le budget dépasse la moyenne globale, toutes ligues confondues (sous-requête non-corrélée)
SELECT t.name, t.budget_millions
FROM teams t
WHERE t.budget_millions > (
    SELECT AVG(budget_millions)
    FROM teams
);