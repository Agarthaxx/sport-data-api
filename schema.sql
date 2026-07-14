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