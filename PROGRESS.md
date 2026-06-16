# Progress — Backend Roadmap 2026

## Phase 1 — SQL & Data Modeling

### Week 1 — SQL fundamentals

- [x] Local setup: MySQL 8.4 + DBeaver
- [x] SELECT, WHERE, ORDER BY, LIMIT
- [ ] GROUP BY + aggregate functions
- [ ] HAVING vs WHERE

**Acquis :**
- Setup local : MySQL 8.4 (LTS) + DBeaver, connexion validée
- Git/GitHub : commits conventionnels, branches feat/, Milestones/Issues/board kanban
- Types MySQL : INT, VARCHAR, DECIMAL(P,S) pour l'argent (jamais FLOAT — erreurs d'arrondi)
- PRIMARY KEY + AUTO_INCREMENT, lecture de DESCRIBE
- SELECT ciblé, WHERE, BETWEEN (bornes inclusives), ORDER BY ASC/DESC, LIMIT
- Lire une erreur SQL : code 1064 = syntaxe, regarder le mot après "near"
- ORDER BY + LIMIT : MySQL trie tout puis coupe (→ enjeu des index plus tard)

**Bloque encore :**
- Rien de bloquant. À voir : GROUP BY + agrégats, HAVING vs WHERE