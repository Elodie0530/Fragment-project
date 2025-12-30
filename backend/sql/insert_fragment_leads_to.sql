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

-- Acte 1 — Chapitre 1 — Carte départ
(
    "La place de la fontaine",
    (select id from chapter where history_id = 1 and number = 1),
    (select id from chapter where history_id = 1 and number = 2), 1
),

-- Acte 1 — Chapitre 2 — Place de la fontaine
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

-- Acte 1 — Chapitre 3 — Serveur
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

-- Acte 1 — Chapitre 49 — Client attablé
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

-- Acte 1 — Chapitre 27 — Client au bar
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

-- Acte 1 — Chapitre 55 — Aubergistes
(
    "Retourner dans l'entrée de l’auberge",
    (select id from chapter where history_id = 1 and number = 55),
    (select id from chapter where history_id = 1 and number = 34), 1
),
(
    "Revenir place de la fontaine",
    (select id from chapter where history_id = 1 and number = 55),
    (select id from chapter where history_id = 1 and number = 2), 2
);
