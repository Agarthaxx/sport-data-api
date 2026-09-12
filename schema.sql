-- schema.sql — Semaine 1 : table teams (sandbox)

CREATE TABLE teams (
    id              INT AUTO_INCREMENT PRIMARY KEY,
    name            VARCHAR(100),
    city            VARCHAR(50),
    founded_year    INT,
    budget_millions DECIMAL(6,2),
    league          VARCHAR(50)
);

INSERT INTO teams (name, city, founded_year, budget_millions, league) VALUES
('Paris SG',  'Paris',     1970, 800.50, 'Ligue 1'),
('Marseille', 'Marseille', 1899, 250.00, 'Ligue 1'),
('Lyon',      'Lyon',      1950, 180.75, 'Ligue 1'),
('Monaco',    'Monaco',    1924, 220.00, 'Ligue 1'),
('Lille',     'Lille',     1944, 120.30, 'Ligue 2'),
('Lens',      'Lens',      1906,  95.00, 'Ligue 2');

-- schema.sql — Semaine 2 : table players (FK vers teams, ON DELETE RESTRICT explicite)
CREATE TABLE players (
    id       INT AUTO_INCREMENT PRIMARY KEY,
    name     VARCHAR(100),
    position VARCHAR(100),
    goals    INT,
    team_id  INT NOT NULL,
    FOREIGN KEY (team_id) REFERENCES teams(id) ON DELETE RESTRICT
);

-- Semaine 2 : données de test players
INSERT INTO players (name, position, goals, team_id) VALUES
('Dembélé', 'Attaquant', 12, 1),
('Hakimi', 'Défenseur', 5, 1),
('Vitinha', 'Milieu', 5, 1),
('Rongier', 'Milieu', 2, 2),
('Aubameyang', 'Attaquant', 15, 2),
('Lacazette', 'Attaquant', 11, 3),
('Ben Yedder', 'Attaquant', 18, 4),
('David', 'Attaquant', 14, 5),
('Mbappé', 'Attaquant', 7, 1),
('Naeves', 'Defenseur', 3, 1);