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

### Week 2 — JOINs, sous-requêtes corrélées, normalisation

- [x] INNER / LEFT / RIGHT JOIN
- [x] Sous-requêtes corrélées
- [x] Normalisation 1NF → 3NF

**Acquis :**
- INNER / LEFT / RIGHT JOIN maîtrisés (RIGHT surtout en lecture — équivalent à un LEFT avec tables inversées)
- Sous-requêtes corrélées : comparaison à une moyenne de groupe (joueurs vs équipe, équipes vs ligue), distinction corrélée/non-corrélée, edge case du joueur unique dans son équipe compris
- Normalisation 1NF (atomicité) → 2NF (dépendance à la clé entière) → 3NF (pas de dépendance transitive), appliquée rétrospectivement au schéma teams/players existant

### Week 3 — Fonctions fenêtre, CTEs

- [x] Fonctions fenêtre : RANK(), DENSE_RANK(), ROW_NUMBER() + PARTITION BY
- [x] CTEs (WITH ... AS)
- [x] Pourquoi on ne peut pas filtrer un alias de fonction fenêtre dans WHERE/HAVING (ordre d'exécution)
- [ ] Vues & vues matérialisées
- [ ] EXPLAIN ANALYZE (intro)

**Acquis :**
- RANK() vs DENSE_RANK() : RANK() saute les valeurs après un ex-aequo, DENSE_RANK() non
- Pourquoi ROW_NUMBER() est dangereux pour un "top 1" en cas d'égalité (distribution arbitraire, perd un joueur à égalité)
- Ordre d'exécution SQL complet : FROM → WHERE → GROUP BY → agrégats → HAVING → SELECT → fonctions fenêtre → ORDER BY
- CTE comme solution : calculer le rang dans un bloc à part, puis filtrer dessus dans le SELECT externe
- Piège de nommage : ne jamais nommer une CTE comme une table existante (ambiguïté)
- Exercice : top buteur par équipe avec seuil minimum (CTE + RANK + filtre combiné)