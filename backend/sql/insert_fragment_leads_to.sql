/* test data
INSERT INTO lead_to (action, start_id, end_id) VALUES
(
    "vers la fontaine",
    (select id from chapter where history_id = 1 and number=2),
    (select id from chapter where history_id = 1 and number=3)
),
(
    "vers l'école",
    (select id from chapter where history_id = 1 and number=1),
    (select id from chapter where history_id = 1 and number=2)
),
(
    "fin, recommencer ?",
    (select id from chapter where history_id = 1 and number=3),
    (select id from chapter where history_id = 1 and number=1)
),
(
    "fin, recommencer ?",
    (select id from chapter where history_id = 1 and number=2),
    (select id from chapter where history_id = 1 and number=1)
),
(
    "vers l'infini",
    (select id from chapter where history_id = 1 and number=2),
    (select id from chapter where history_id = 1 and number=4)
),
(
    "fin, recommencer ?",
    (select id from chapter where history_id = 1 and number=4),
    (select id from chapter where history_id = 1 and number=1)
),
(
    "au-delà",
    (select id from chapter where history_id = 1 and number=1),
    (select id from chapter where history_id = 1 and number=5)
),
(
    "au-delà",
    (select id from chapter where history_id = 1 and number=2),
    (select id from chapter where history_id = 1 and number=5)
),
(
    "au-delà",
    (select id from chapter where history_id = 1 and number=4),
    (select id from chapter where history_id = 1 and number=5)
),
(
    "fin, recommencer ?",
    (select id from chapter where history_id = 1 and number=5),
    (select id from chapter where history_id = 1 and number=1)
);*/

INSERT INTO lead_to (action, start_id, end_id, position) VALUES

-- Acte 1 — Chapitre 1 — Carte de la région d'Onenta-aux-Mines (départ)
(
    "La place de la fontaine",
    (select id from chapter where history_id = 1 and number = 1),
    (select id from chapter where history_id = 1 and number = 2), 1
),

-- Acte 1 — Chapitre 2 — La place de la fontaine
(
    "Aller à l’auberge Duergar",
    (select id from chapter where history_id = 1 and number = 2),
    (select id from chapter where history_id = 1 and number = 11), 1
),
(
    "Visiter l’école du village",
    (select id from chapter where history_id = 1 and number = 2),
    (select id from chapter where history_id = 1 and number = 22), 2
),
(
    "Explorer la bijouterie",
    (select id from chapter where history_id = 1 and number = 2),
    (select id from chapter where history_id = 1 and number = 33), 3
),

-- Acte 1 — Chapitre 11 — L’Auberge Duergar
(
    "Entrer dans l’auberge",
    (select id from chapter where history_id = 1 and number = 11),
    (select id from chapter where history_id = 1 and number = 34), 1
),
(
    "Revenir place de la fontaine",
    (select id from chapter where history_id = 1 and number = 11),
    (select id from chapter where history_id = 1 and number = 2), 2
),
(
    "Se rendre à la bourse aux minéraux",
    (select id from chapter where history_id = 1 and number = 11),
    (select id from chapter where history_id = 1 and number = 6), 3
),

-- Acte 1 — Chapitre 34 — Entrer dans l’auberge, parler avec
(
    "Au serveur",
    (select id from chapter where history_id = 1 and number = 34),
    (select id from chapter where history_id = 1 and number = 3), 1
),
(
    "À un client attablé",
    (select id from chapter where history_id = 1 and number = 34),
    (select id from chapter where history_id = 1 and number = 49), 2
),
(
    "À un client au bar",
    (select id from chapter where history_id = 1 and number = 34),
    (select id from chapter where history_id = 1 and number = 27), 3
),
(
    "Aux aubergistes",
    (select id from chapter where history_id = 1 and number = 34),
    (select id from chapter where history_id = 1 and number = 55), 4
),

-- Acte 1 — Chapitre 3 — Le serveur
(
    "Retourner dans l'entrée de l’auberge",
    (select id from chapter where history_id = 1 and number = 3),
    (select id from chapter where history_id = 1 and number = 34), 1
),
(
    "Revenir place de la fontaine",
    (select id from chapter where history_id = 1 and number = 3),
    (select id from chapter where history_id = 1 and number = 2), 2
),

-- Acte 1 — Chapitre 49 — Un client attablé
(
    "Retourner dans l'entrée de l’auberge",
    (select id from chapter where history_id = 1 and number = 49),
    (select id from chapter where history_id = 1 and number = 34), 1
),
(
    "Revenir place de la fontaine",
    (select id from chapter where history_id = 1 and number = 49),
    (select id from chapter where history_id = 1 and number = 2), 2
),

-- Acte 1 — Chapitre 27 — Un client au bar
(
    "Retourner dans l'entrée de l’auberge",
    (select id from chapter where history_id = 1 and number = 27),
    (select id from chapter where history_id = 1 and number = 34), 1
),
(
    "Revenir place de la fontaine",
    (select id from chapter where history_id = 1 and number = 27),
    (select id from chapter where history_id = 1 and number = 2), 2
),

-- Acte 1 — Chapitre 55 — Les aubergistes
(
    "Retourner dans l'entrée de l’auberge",
    (select id from chapter where history_id = 1 and number = 55),
    (select id from chapter where history_id = 1 and number = 34), 1
),
(
    "Revenir place de la fontaine",
    (select id from chapter where history_id = 1 and number = 55),
    (select id from chapter where history_id = 1 and number = 2), 2
),

-- Acte 1 — Chapitre 22 — L'école du village
(
    "Entrer dans l’école",
    (select id from chapter where history_id = 1 and number = 22),
    (select id from chapter where history_id = 1 and number = 15), 1
),
(
    "Revenir place de la fontaine",
    (select id from chapter where history_id = 1 and number = 22),
    (select id from chapter where history_id = 1 and number = 2), 2
),
(
    "Se rendre à la bourse aux minéraux",
    (select id from chapter where history_id = 1 and number = 22),
    (select id from chapter where history_id = 1 and number = 6), 3
),

-- Acte 1 — Chapitre 15 — Entrer dans l’école, parler avec
(
    "Le professeur",
    (select id from chapter where history_id = 1 and number = 15),
    (select id from chapter where history_id = 1 and number = 30), 1
),
(
    "Les élèves",
    (select id from chapter where history_id = 1 and number = 15),
    (select id from chapter where history_id = 1 and number = 19), 2
),
(
    "La tombola",
    (select id from chapter where history_id = 1 and number = 15),
    (select id from chapter where history_id = 1 and number = 54), 3
),
(
    "Orsik Pioche d’Argent",
    (select id from chapter where history_id = 1 and number = 15),
    (select id from chapter where history_id = 1 and number = 4), 4
),

-- Acte 1 — Chapitre 30 — Le professeur
(
    "Retourner dans l'entrée de l’école",
    (select id from chapter where history_id = 1 and number = 30),
    (select id from chapter where history_id = 1 and number = 15), 1
),
(
    "Revenir place de la fontaine",
    (select id from chapter where history_id = 1 and number = 30),
    (select id from chapter where history_id = 1 and number = 2), 2
),

-- Acte 1 — Chapitre 19 — Les élèves
(
    "Retourner dans l'entrée de l’école",
    (select id from chapter where history_id = 1 and number = 19),
    (select id from chapter where history_id = 1 and number = 15), 1
),
(
    "Revenir place de la fontaine",
    (select id from chapter where history_id = 1 and number = 19),
    (select id from chapter where history_id = 1 and number = 2), 2
),

-- Acte 1 — Chapitre 54 — La tombola
(
    "Oui, voir le gain remporté",
    (select id from chapter where history_id = 1 and number = 54),
    (select id from chapter where history_id = 1 and number = 63), 1
),
(
    "Non, je ne veux pas jouer",
    (select id from chapter where history_id = 1 and number = 54),
    (select id from chapter where history_id = 1 and number = 2), 2
),

-- Acte 1 — Chapitre 63 — Gain tombola
(
    "Revenir place de la fontaine",
    (select id from chapter where history_id = 1 and number = 63),
    (select id from chapter where history_id = 1 and number = 2), 1
),
(
    "Se rendre à la bourse aux minéraux",
    (select id from chapter where history_id = 1 and number = 63),
    (select id from chapter where history_id = 1 and number = 6), 2
),

-- Acte 1 — Chapitre 4 — Orsik Pioche d’Argent
(
    "Retourner dans l'entrée de l’école",
    (select id from chapter where history_id = 1 and number = 4),
    (select id from chapter where history_id = 1 and number = 15), 1
),
(
    "Revenir place de la fontaine",
    (select id from chapter where history_id = 1 and number = 4),
    (select id from chapter where history_id = 1 and number = 2), 2
),

-- Acte 1 — Chapitre 33 — La bijouterie
(
    "Entrer dans la bijouterie",
    (select id from chapter where history_id = 1 and number = 33),
    (select id from chapter where history_id = 1 and number = 25), 1
),
(
    "Revenir place de la fontaine",
    (select id from chapter where history_id = 1 and number = 33),
    (select id from chapter where history_id = 1 and number = 2), 2
),
(
    "Se rendre à la bourse aux minéraux",
    (select id from chapter where history_id = 1 and number = 33),
    (select id from chapter where history_id = 1 and number = 6), 3
),

-- Acte 1 — Chapitre 25 — Entrer dans la bijouterie, parler avec
(
    "Le vigile",
    (select id from chapter where history_id = 1 and number = 25),
    (select id from chapter where history_id = 1 and number = 5), 1
),
(
    "Des clients",
    (select id from chapter where history_id = 1 and number = 25),
    (select id from chapter where history_id = 1 and number = 17), 2
),
(
    "Un vendeur",
    (select id from chapter where history_id = 1 and number = 25),
    (select id from chapter where history_id = 1 and number = 41), 3
),
(
    "Tharadin Emérhalde",
    (select id from chapter where history_id = 1 and number = 25),
    (select id from chapter where history_id = 1 and number = 13), 4
),

-- Acte 1 — Chapitre 5 — Le vigile
(
    "Retourner dans l'entrée de la bijouterie",
    (select id from chapter where history_id = 1 and number = 5),
    (select id from chapter where history_id = 1 and number = 25), 1
),
(
    "Revenir place de la fontaine",
    (select id from chapter where history_id = 1 and number = 5),
    (select id from chapter where history_id = 1 and number = 2), 2
),

-- Acte 1 — Chapitre 17 — Des clients bijouterie
(
    "Retourner dans l'entrée de la bijouterie",
    (select id from chapter where history_id = 1 and number = 17),
    (select id from chapter where history_id = 1 and number = 25), 1
),
(
    "Revenir place de la fontaine",
    (select id from chapter where history_id = 1 and number = 17),
    (select id from chapter where history_id = 1 and number = 2), 2
),

-- Acte 1 — Chapitre 41 — Un vendeur
(
    "Oui",
    (select id from chapter where history_id = 1 and number = 41),
    (select id from chapter where history_id = 1 and number = 36), 1
),
(
    "Non",
    (select id from chapter where history_id = 1 and number = 41),
    (select id from chapter where history_id = 1 and number = 2), 2
),

-- Acte 1 — Chapitre 36 — Achat d'un bijou
(
    "Revenir place de la fontaine",
    (select id from chapter where history_id = 1 and number = 36),
    (select id from chapter where history_id = 1 and number = 2), 1
),
(
    "Se rendre à la bourse aux minéraux",
    (select id from chapter where history_id = 1 and number = 36),
    (select id from chapter where history_id = 1 and number = 6), 2
),

-- Acte 1 — Chapitre 13 — Tharadin Emérhalde
(
    "Retourner dans l'entrée de la bijouterie",
    (select id from chapter where history_id = 1 and number = 13),
    (select id from chapter where history_id = 1 and number = 25), 1
),
(
    "Revenir place de la fontaine",
    (select id from chapter where history_id = 1 and number = 13),
    (select id from chapter where history_id = 1 and number = 2), 2
);
