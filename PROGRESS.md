# Progress — Backend Roadmap 2026

## Phase 1 — SQL & Data Modeling

### Week 1 — SQL fundamentals

- [x] Local setup: MySQL 8.4 + DBeaver
- [x] SELECT, WHERE, ORDER BY, LIMIT
- [x] GROUP BY + aggregate functions
- [x] HAVING vs WHERE

**Acquis :**
- Setup local : MySQL 8.4 (LTS) + DBeaver, connexion validée
- Git/GitHub : commits conventionnels, branches feat/, Milestones/Issues/board kanban
- Types MySQL : INT, VARCHAR, DECIMAL(P,S) pour l'argent (jamais FLOAT — erreurs d'arrondi)
- PRIMARY KEY + AUTO_INCREMENT, lecture de DESCRIBE
- SELECT ciblé, WHERE, BETWEEN (bornes inclusives), ORDER BY ASC/DESC, LIMIT
- Lire une erreur SQL : code 1064 = syntaxe, regarder le mot après "near"
- ORDER BY + LIMIT : MySQL trie tout puis coupe (→ enjeu des index plus tard)
- GROUP BY : agrégats par groupe ( COUNT/SUM/AVG/MIN/MAX par ligue)
- Règle only_full_group_by : colonne du SELECT doit être groupée ou agrégée (erreur 1055)
- HAVING filtre des groupes ( après agrégation ) vs WHERE filtre les lignes (avant)
- Outils : début de TMUX ( multiplex, terminal ), mysqldump (export schéma)

**Bloque encore :**
- Rien de bloquant. Semaine 1 terminée -> next : Semaine 2 (JOINs)